// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.Brand;
import com.malsolo.jshop.domain.ElectricalAppliance;
import com.malsolo.jshop.domain.Kind;
import java.lang.String;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect ElectricalAppliance_Roo_Finder {
    
    public static TypedQuery<ElectricalAppliance> ElectricalAppliance.findElectricalAppliancesByBrandAndKindAndModelLike(Brand brand, Kind kind, String model) {
        if (brand == null) throw new IllegalArgumentException("The brand argument is required");
        if (kind == null) throw new IllegalArgumentException("The kind argument is required");
        if (model == null || model.length() == 0) throw new IllegalArgumentException("The model argument is required");
        model = model.replace('*', '%');
        if (model.charAt(0) != '%') {
            model = "%" + model;
        }
        if (model.charAt(model.length() - 1) != '%') {
            model = model + "%";
        }
        EntityManager em = ElectricalAppliance.entityManager();
        TypedQuery<ElectricalAppliance> q = em.createQuery("SELECT ElectricalAppliance FROM ElectricalAppliance AS electricalappliance WHERE electricalappliance.brand = :brand AND electricalappliance.kind = :kind AND LOWER(electricalappliance.model) LIKE LOWER(:model)", ElectricalAppliance.class);
        q.setParameter("brand", brand);
        q.setParameter("kind", kind);
        q.setParameter("model", model);
        return q;
    }
    
}