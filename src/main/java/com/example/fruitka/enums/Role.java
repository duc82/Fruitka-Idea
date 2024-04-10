package com.example.fruitka.enums;


public enum Role {
    USER("user"), ADMIN("admin");

    private final String label;

    private Role(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

    public static Role getRole(String label) {
        for (Role role : Role.values()) {
            if (role.getLabel().equals(label)) {
                return role;
            }
        }
        return null;
    }

    public String getGetLabel() {
        return label;
    }
}