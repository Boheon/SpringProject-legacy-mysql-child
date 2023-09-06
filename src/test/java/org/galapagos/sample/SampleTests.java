package org.galapagos.sample;

import static org.junit.Assert.assertNotNull;

import org.galapagos.config.RootConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {RootConfig.class})
@Log4j
public class SampleTests {

	@Autowired	// reflection 기능을 이용해서 설정
	private Restaurant restaurant;
	
	
	@Test
	public void testExist() {
		
		assertNotNull(restaurant);
		
		log.info(restaurant);
		log.info("------------------------------");
		log.info(restaurant.getChef());
		
	}


}
