// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.Provider;
import com.malsolo.jshop.domain.StockLine;
import java.lang.Double;
import java.lang.Integer;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect StockLine_Roo_Finder {
    
    public static TypedQuery<StockLine> StockLine.findStockLinesByCostBetweenAndProviderAndQuantityBetweenAndStockDateBetween(Double minCost, Double maxCost, Provider provider, Integer minQuantity, Integer maxQuantity, Date minStockDate, Date maxStockDate) {
        if (minCost == null) throw new IllegalArgumentException("The minCost argument is required");
        if (maxCost == null) throw new IllegalArgumentException("The maxCost argument is required");
        if (provider == null) throw new IllegalArgumentException("The provider argument is required");
        if (minQuantity == null) throw new IllegalArgumentException("The minQuantity argument is required");
        if (maxQuantity == null) throw new IllegalArgumentException("The maxQuantity argument is required");
        if (minStockDate == null) throw new IllegalArgumentException("The minStockDate argument is required");
        if (maxStockDate == null) throw new IllegalArgumentException("The maxStockDate argument is required");
        EntityManager em = StockLine.entityManager();
        TypedQuery<StockLine> q = em.createQuery("SELECT StockLine FROM StockLine AS stockline WHERE stockline.cost BETWEEN :minCost AND :maxCost  AND stockline.provider = :provider AND stockline.quantity BETWEEN :minQuantity AND :maxQuantity  AND stockline.stockDate BETWEEN :minStockDate AND :maxStockDate", StockLine.class);
        q.setParameter("minCost", minCost);
        q.setParameter("maxCost", maxCost);
        q.setParameter("provider", provider);
        q.setParameter("minQuantity", minQuantity);
        q.setParameter("maxQuantity", maxQuantity);
        q.setParameter("minStockDate", minStockDate);
        q.setParameter("maxStockDate", maxStockDate);
        return q;
    }
    
}
