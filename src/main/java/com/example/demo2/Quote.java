package com.example.demo2;

public class Quote implements java.io.Serializable {

    public Quote() {

    }

    private String apiKey;
    private String quoteOTD;

    public String getApiKey() {
        return apiKey;
    }

    public String getQuoteOTD() {
        return quoteOTD;
    }

    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public void setQuoteOTD(String url) {
        this.quoteOTD = quoteOTD;
    }
    
}