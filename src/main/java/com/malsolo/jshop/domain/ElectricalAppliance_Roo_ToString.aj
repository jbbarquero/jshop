// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import java.lang.String;

privileged aspect ElectricalAppliance_Roo_ToString {
    
    public String ElectricalAppliance.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Description: ").append(getDescription()).append(", ");
        sb.append("Kind: ").append(getKind());
        return sb.toString();
    }
    
}
