// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import java.lang.String;

privileged aspect ElectricalAppliance_Roo_ToString {
    
    public String ElectricalAppliance.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("LastDateStockLine: ").append(getLastDateStockLine()).append(", ");
        sb.append("AddQuantity: ").append(getAddQuantity()).append(", ");
        sb.append("AverageCost: ").append(getAverageCost()).append(", ");
        sb.append("SalePrice: ").append(getSalePrice()).append(", ");
        sb.append("Advantage: ").append(getAdvantage()).append(", ");
        sb.append("Description: ").append(getDescription()).append(", ");
        sb.append("Model: ").append(getModel()).append(", ");
        sb.append("Earnings: ").append(getEarnings()).append(", ");
        sb.append("Kind: ").append(getKind()).append(", ");
        sb.append("Brand: ").append(getBrand()).append(", ");
        sb.append("StockLines: ").append(getStockLines() == null ? "null" : getStockLines().size());
        return sb.toString();
    }
    
}
