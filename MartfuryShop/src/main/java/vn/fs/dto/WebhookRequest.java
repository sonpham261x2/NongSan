package vn.fs.dto;

public class WebhookRequest {
    private QueryResult queryResult;

    public QueryResult getQueryResult() {
        return queryResult;
    }

    public void setQueryResult(QueryResult queryResult) {
        this.queryResult = queryResult;
    }

    public static class QueryResult {
        private String queryText;
        private Parameters parameters;

        public String getQueryText() {
            return queryText;
        }

        public void setQueryText(String queryText) {
            this.queryText = queryText;
        }

        public Parameters getParameters() {
            return parameters;
        }

        public void setParameters(Parameters parameters) {
            this.parameters = parameters;
        }
    }

    public static class Parameters {
        private String product_category;

        public String getProduct_category() {
            return product_category;
        }

        public void setProduct_category(String product_category) {
            this.product_category = product_category;
        }
    }
}
