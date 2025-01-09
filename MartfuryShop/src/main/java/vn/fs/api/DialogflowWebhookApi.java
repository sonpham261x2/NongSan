package vn.fs.api;

import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/webhook")
public class DialogflowWebhookApi {

    @PostMapping
//    public Map<String, Object> handleWebhook(@RequestBody Map<String, Object> request) {
//        // Lấy intent từ yêu cầu
//        Map<String, Object> queryResult = (Map<String, Object>) request.get("queryResult");
//        String intentName = (String) ((Map<String, Object>) queryResult.get("intent")).get("displayName");
//
//        // Xử lý intent
//        String responseText;
//        if ("Thời tiết hôm nay thế nào?".equals(intentName)) {
//            responseText = "Hôm nay trời nắng đẹp, nhiệt độ khoảng 30°C.";
//        } else {
//            responseText = "Xin lỗi, tôi không hiểu câu hỏi của bạn.";
//        }
//
//        // Tạo phản hồi
//        Map<String, Object> response = new HashMap<>();
//        response.put("fulfillmentText", responseText);
//
//        return response;
//    }



    @ResponseBody
    public String handleWebhook(@RequestBody String requestBody) {
        // Phân tích dữ liệu yêu cầu từ Dialogflow
        System.out.println("Received request: " + requestBody);

        // Trả về response với Custom Payload
        String response = "{\n" +
                "  \"fulfillmentMessages\": [\n" +
                "    {\n" +
                "      \"text\": {\n" +
                "        \"text\": [\n" +
                "          \"Here is the product you asked for: Smartphone XYZ\"\n" +
                "        ]\n" +
                "      }\n" +
                "    },\n" +
                "    {\n" +
                "      \"payload\": {\n" +
                "        \"richContent\": [\n" +
                "          [\n" +
                "            {\n" +
                "              \"icon\": {\n" +
                "                \"color\": \"#FF9800\",\n" +
                "                \"type\": \"link\"\n" +
                "              },\n" +
                "              \"link\": \"https://translate.google.com\",\n" +
                "              \"text\": \"View Product\",\n" +
                "              \"type\": \"button\"\n" +
                "            }\n" +
                "          ]\n" +
                "        ]\n" +
                "      }\n" +
                "    }\n" +
                "  ]\n" +
                "}";

        return response;
    }
}
