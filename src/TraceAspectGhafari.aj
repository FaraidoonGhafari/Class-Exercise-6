public aspect TraceAspectGhafari {
   pointcut classToTrace(): within(*App);

    pointcut methodToTrace(): classToTrace() && execution(String getName());
    
    before(): methodToTrace() {
    	System.out.print("[BGN] ");
    	System.out.println(thisJoinPointStaticPart.getSignature() + ", " + //
    	thisJoinPointStaticPart.getSourceLocation().getLine());
    	
    }
  
   after(): methodToTrace() {
	  System.out.print("[END] ");
      System.out.println(thisJoinPointStaticPart.getSourceLocation().getFileName());
   }
}
