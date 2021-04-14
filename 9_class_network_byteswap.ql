import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap () {
        exists(MacroInvocation mi |
            mi.getMacroName() in ["ntohl", "ntohll", "ntohs"]  
            and this = mi.getExpr()
        )
    }
}

from NetworkByteSwap n
select n, "NetworkByteSwap: Use of ntoh* macro."