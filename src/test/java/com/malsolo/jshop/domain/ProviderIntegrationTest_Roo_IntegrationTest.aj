// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.ProviderDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProviderIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ProviderIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ProviderIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ProviderIntegrationTest: @Transactional;
    
    @Autowired
    private ProviderDataOnDemand ProviderIntegrationTest.dod;
    
    @Test
    public void ProviderIntegrationTest.testCountProviders() {
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", dod.getRandomProvider());
        long count = com.malsolo.jshop.domain.Provider.countProviders();
        org.junit.Assert.assertTrue("Counter for 'Provider' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ProviderIntegrationTest.testFindProvider() {
        com.malsolo.jshop.domain.Provider obj = dod.getRandomProvider();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.Provider.findProvider(id);
        org.junit.Assert.assertNotNull("Find method for 'Provider' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Provider' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ProviderIntegrationTest.testFindAllProviders() {
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", dod.getRandomProvider());
        long count = com.malsolo.jshop.domain.Provider.countProviders();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Provider', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.malsolo.jshop.domain.Provider> result = com.malsolo.jshop.domain.Provider.findAllProviders();
        org.junit.Assert.assertNotNull("Find all method for 'Provider' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Provider' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ProviderIntegrationTest.testFindProviderEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", dod.getRandomProvider());
        long count = com.malsolo.jshop.domain.Provider.countProviders();
        if (count > 20) count = 20;
        java.util.List<com.malsolo.jshop.domain.Provider> result = com.malsolo.jshop.domain.Provider.findProviderEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Provider' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Provider' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ProviderIntegrationTest.testFlush() {
        com.malsolo.jshop.domain.Provider obj = dod.getRandomProvider();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.Provider.findProvider(id);
        org.junit.Assert.assertNotNull("Find method for 'Provider' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyProvider(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Provider' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ProviderIntegrationTest.testMerge() {
        com.malsolo.jshop.domain.Provider obj = dod.getRandomProvider();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.Provider.findProvider(id);
        boolean modified =  dod.modifyProvider(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.malsolo.jshop.domain.Provider merged = (com.malsolo.jshop.domain.Provider) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Provider' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ProviderIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", dod.getRandomProvider());
        com.malsolo.jshop.domain.Provider obj = dod.getNewTransientProvider(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Provider' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Provider' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ProviderIntegrationTest.testRemove() {
        com.malsolo.jshop.domain.Provider obj = dod.getRandomProvider();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Provider' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.Provider.findProvider(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Provider' with identifier '" + id + "'", com.malsolo.jshop.domain.Provider.findProvider(id));
    }
    
}
