import cpp

from MacroInvocation mc
where mc.getMacroName().regexpMatch("ntoh(l|ll|s)")
select mc, "a macro invocation"