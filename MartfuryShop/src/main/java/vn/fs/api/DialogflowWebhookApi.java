package vn.fs.api;

import com.google.gson.Gson;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vn.fs.dto.WebhookRequest;
import vn.fs.dto.WebhookResponse;

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


//test payload
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
                "              \"link\": \"http://localhost:4200/product-detail/10\",\n" +
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


//testpayloaddiscount



//
////    public Map<String, Object> handleWebhook(@RequestBody Map<String, Object> request) {
//        public String handleWebhook(@RequestBody Map<String, Object> request) {
//
//        // Lấy intent từ yêu cầu
//        Map<String, Object> queryResult = (Map<String, Object>) request.get("queryResult");
//        String intentName = (String) ((Map<String, Object>) queryResult.get("intent")).get("displayName");
//
////        Map<String, Object> response = new HashMap<>();
//
//        String response = "";
//
//        if ("BestSellerQuery".equals(intentName)) {
//            // Trả về danh sách lựa chọn
////            response.put("fulfillmentMessages", new Object[]{
////                    Map.of(
////                            "platform", "PLATFORM_UNSPECIFIED",
////                            "quickReplies", Map.of(
////                                    "title", "Bạn quan tâm đến mặt hàng nào?",
////                                    "quickReplies", new String[]{
////                                            "Rau xanh", "Củ quả", "Trái cây tươi", "Nấm các loại", "Sản phẩm từ hạt"
////                                    }
////                            )
////                    )
////        });
//
//
//             response = "{\n" +
//                    "  \"fulfillmentText\": \"Chúng tôi có các mặt hàng bán chạy nhất trong danh mục rau xanh, như rau cải xanh, rau muống, rau ngót.\",\n" +
//                    "  \"fulfillmentMessages\": [\n" +
//                    "    {\n" +
//                    "      \"quickReplies\": {\n" +
//                    "        \"title\": \"Bạn quan tâm đến loại rau nào?\",\n" +
//                    "        \"quickReplies\": [\n" +
//                    "          \"Rau cải xanh\",\n" +
//                    "          \"Rau muống\",\n" +
//                    "          \"Rau ngót\"\n" +
//                    "        ]\n" +
//                    "      }\n" +
//                    "    }\n" +
//                    "  ]\n" +
//                    "}";
//
//
//
//
//        } else if ("BestSellerCategory".equals(intentName)) {
//            // Lấy danh mục người dùng chọn
//            String category = (String) ((Map<String, Object>) queryResult.get("parameters")).get("category");
//
//            // Lấy dữ liệu từ cơ sở dữ liệu (giả sử có service xử lý)
//            String bestSellers = getBestSellersByCategory(category);
//
//             response = "{\n" +
//                "  \"fulfillmentMessages\": [\n" +
//                "    {\n" +
//                "      \"text\": {\n" +
//                "        \"text\": [\n" +
//                "          \"Here is the product you asked for: Smartphone XYZ\"\n" +
//                "        ]\n" +
//                "      }\n" +
//                "    },\n" +
//                "    {\n" +
//                "      \"payload\": {\n" +
//                "        \"richContent\": [\n" +
//                "          [\n" +
//                "            {\n" +
//                "              \"icon\": {\n" +
//                "                \"color\": \"#FF9800\",\n" +
//                "                \"type\": \"link\"\n" +
//                "              },\n" +
//                "              \"link\": \"https://translate.google.com\",\n" +
//                "              \"text\": \"View Product\",\n" +
//                "              \"type\": \"button\"\n" +
//                "            }\n" +
//                "          ]\n" +
//                "        ]\n" +
//                "      }\n" +
//                "    }\n" +
//                "  ]\n" +
//                "}";
//        } else {
//            Map<String, Object> response1 = new HashMap<>();
//            response1.put("fulfillmentText", "Xin lỗi, tôi không hiểu yêu cầu của bạn.");
//        }
//
//        return response;
//    }
//
//    private String getBestSellersByCategory(String category) {
//        // Lấy dữ liệu từ cơ sở dữ liệu (ví dụ minh họa)
//        switch (category) {
//            case "Rau xanh":
//                return "Rau cải xanh, Rau muống, Rau ngót";
//            case "Củ quả":
//                return "Cà rốt, Khoai tây, Củ cải trắng";
//            case "Trái cây tươi":
//                return "Táo, Cam, Nho";
//            case "Nấm các loại":
//                return "Nấm hương, Nấm rơm, Nấm kim châm";
//            case "Sản phẩm từ hạt":
//                return "Hạt điều, Hạt óc chó, Hạt hạnh nhân";
//            default:
//                return "Không tìm thấy sản phẩm nào.";
//        }
//    }

//    public ResponseEntity<String> handleWebhook(@RequestBody String request) {
//        // Phân tích cú pháp JSON từ Dialogflow
//        Gson gson = new Gson();
//        WebhookRequest webhookRequest = gson.fromJson(request, WebhookRequest.class);
//
//        // Lấy thông tin người dùng đã chọn
//        String userMessage = webhookRequest.getQueryResult().getQueryText();
//        String productCategory = webhookRequest.getQueryResult().getParameters().getProduct_category();
//
//        // Tạo phản hồi cho Dialogflow
//        WebhookResponse response = new WebhookResponse();
//
//        if ("Điện thoại".equalsIgnoreCase(productCategory)) {
//            response.setFulfillmentText("Chúng tôi có các sản phẩm điện thoại như iPhone, Samsung Galaxy.");
//        } else if ("Laptop".equalsIgnoreCase(productCategory)) {
//            response.setFulfillmentText("Chúng tôi có các sản phẩm laptop như MacBook, Dell XPS.");
//        } else if ("Máy tính bảng".equalsIgnoreCase(productCategory)) {
//            response.setFulfillmentText("Chúng tôi có các sản phẩm máy tính bảng như iPad, Samsung Tab.");
//        } else {
//            response.setFulfillmentText("Xin lỗi, chúng tôi không tìm thấy sản phẩm bạn yêu cầu.");
//        }
//
//        // Trả về phản hồi cho Dialogflow
//        return ResponseEntity.ok(gson.toJson(response));
//    }








}
