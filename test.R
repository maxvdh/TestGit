#Allow for a maximum of 5 affiliate entries per order
#ABC stays in the original form!

ABC <- do.call(rbind, 
        by(ABC, INDICES=list(ABC$Order.ID, ABC$affiliate_id), 
           FUN=function(x) head(x[order(x$Unix.AssistTimestamp, decreasing=TRUE), ], 5))) 

ABC <- ABC

DAFUQ HAPPENED!??!!