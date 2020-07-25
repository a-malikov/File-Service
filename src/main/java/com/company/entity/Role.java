package com.company.entity;

public enum Role {
    USER, ADMIN;

    @Override
    public String toString() {
        return "ROLE_" + name();
    }
}
