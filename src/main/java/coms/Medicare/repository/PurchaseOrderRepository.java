package coms.Medicare.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import coms.Medicare.model.PurchaseOrder;



public interface PurchaseOrderRepository extends JpaRepository<PurchaseOrder, Long> {
	
	

}
