/**
 * 
 */
package juet.dark.universe.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import juet.dark.universe.service.MainService;

/**
 * @author	: Juet
 * @date	: 2019. 4. 25.
 * @desc	: 메인화면 컨트롤러, 스프링 프레임워크 스터디 일환, 
 * 
 * 개요 : 이미지를 업로드하고 분석 결과를 얻는다.
 * 
 */
@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping("/")
	public String home(Locale locale, Model model){
		logger.info("Called Area --> {}","컨트롤러 패키지의 home 메서드 실행");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "home_bootstrap";
	}

}
