package vn.fs.api;

import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/webhook")
public class DialogflowWebhookApi {

    @PostMapping
    public Map<String, Object> handleWebhook(@RequestBody Map<String, Object> request) {
        // Lấy intent từ yêu cầu
        Map<String, Object> queryResult = (Map<String, Object>) request.get("queryResult");
        String intentName = (String) ((Map<String, Object>) queryResult.get("intent")).get("displayName");

        // Xử lý intent
        String responseText;
        if ("Thời tiết hôm nay thế nào?".equals(intentName)) {
            responseText = "Hôm nay trời nắng đẹp, nhiệt độ khoảng 30°C.";
        } else {
            responseText = "Xin lỗi, tôi không hiểu câu hỏi của bạn.";
        }

        // Tạo phản hồi
        Map<String, Object> response = new HashMap<>();
        response.put("fulfillmentText", responseText);

        return response;
    }
}
