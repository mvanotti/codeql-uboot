import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        // TODO: replace <class> and <var>
        exists(MacroInvocation mc | 
            mc.getMacroName().regexpMatch("ntoh(l|ll|s)") and this = mc.getExpr()
        ) 
    }
}

from NetworkByteSwap n
select n, "Network byte swap"