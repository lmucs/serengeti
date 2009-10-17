package com.playserengeti.service;

import java.util.Collection;

import com.playserengeti.dao.LocationDao;
import com.playserengeti.dao.VisitDao;
import com.playserengeti.domain.Location;
import com.playserengeti.domain.Membership;
import com.playserengeti.domain.Visit;

/**
 * Service for operations related to location.
 */
public class LocationService {

	private LocationDao locationDao;
	private VisitDao visitDao;

    // TODO: private LocationDao LocationDao;

    public LocationService(LocationDao locationDao, VisitDao visitDao) {
        this.locationDao = locationDao;
        this.visitDao = visitDao;
    }

    public Location getLocationById(Integer locationId) {
        return locationDao.getLocationById(locationId);
    }

    /**
     * Writes the given location to persistent storage. If the given location has a null
     * id, a location is created in persistent storage. If the id is not null, and a
     * location with that id exists, the location in persistent storage will be updated
     * with the fields in the argument. If the id is not null, but no such location
     * with that id exists, then throws some kind of exception. (TODO)
     */
    public Integer saveLocation(Location location) {
		if (location.getLocationId() == null) {
			return locationDao.insertLocation(location);

		} else {
			locationDao.updateLocation(location);
			return location.getLocationId();
		}
    }

    /**
     * Deletes the location with the given id from persistent storage. If no such
     * location exists, throws an IllegalArgumentException.
     */
    public void deleteLocation(Integer locationId) {
        locationDao.deleteLocation(locationId);
    }

    /**
     * Returns a collection of all locations in the database.
     * @return
     */
    public Collection<Location> getAllLocations() {
    	return locationDao.getAllLocations();
    }
    
    public void saveVisit(Visit v) {
    	if(v.getId() == null) {
    		visitDao.insertVisit(v);
    	}
    	else {
    		visitDao.updateVisit(v);
    	}
    }
    
    public void deleteVisit(Integer visitId) {
        visitDao.deleteVisit(visitId);
    }
    
    public Collection<Visit> getAllVisits() {
    	return visitDao.getAllVisits();
    }
    
    public Visit getVisitById(Integer id) {
    	return visitDao.getVisitByVisitId(id);
    }
    
    
}
