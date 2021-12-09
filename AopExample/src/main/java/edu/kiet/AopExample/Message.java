package edu.kiet.AopExample;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Component;

@Component
@Aspect
@EnableAspectJAutoProxy
public class Message {
	@Pointcut("execution(public int getDiv(int, int))")
	public void divPointCut() {}
	@Before("divPointCut()")
	public void sumInfo() {
	System.out.println("Welcome before div function");
	}
	@After("divPointCut()")
	public void sumAInfo() {
		System.out.println("Welcome after division function");
	}
	

}

