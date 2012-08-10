#Allow for a maximum of 5 affiliate entries per order
#assists stays in the original form!

assists <- do.call(rbind, 
        by(assists, INDICES=list(assists$Order.ID, assists$affiliate_id), 
           FUN=function(x) head(x[order(x$Unix.AssistTimestamp, decreasing=TRUE), ], 5))) 

assists <- assists