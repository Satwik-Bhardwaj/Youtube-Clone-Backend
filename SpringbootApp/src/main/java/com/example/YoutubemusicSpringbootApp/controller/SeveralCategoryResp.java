package com.example.YoutubemusicSpringbootApp.controller;

import com.example.YoutubemusicSpringbootApp.entity.Category;

import java.util.List;

class ApiCategoriesResp {
    private Categories categories;

    public Categories getCategories() {
        return categories;
    }

    public void setCategoriesResponse(Categories categories) {
        this.categories = categories;
    }
}

class Categories {

    String href;
    private List<Category> items;

    public List<Category> getItems() {
        return items;
    }

    public void setItems(List<Category> items) {
        this.items = items;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getHref() {
        return href;
    }
}
