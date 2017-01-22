print 'Ciao Snow'
import os, readline, rlcompleter, atexit, time
history_file = os.path.join(os.environ['HOME'], '.python_history')
try:
  readline.read_history_file(history_file)
except IOError:
  pass
readline.parse_and_bind("tab: complete")
readline.parse_and_bind('"\e[5~": history-search-backward')
readline.parse_and_bind('"\e[6~": history-search-forward')
readline.parse_and_bind('"\e[5C": forward-word')
readline.parse_and_bind('"\e[5D": backward-word')
readline.parse_and_bind('"\e\e[C": forward-word')
readline.parse_and_bind('"\e\e[D": backward-word')
readline.parse_and_bind('"\e[1;5C": forward-word')
readline.parse_and_bind('"\e[1;5D": backward-word')
readline.set_history_length(100000)
atexit.register(readline.write_history_file, history_file)


def search_attrs(obj, ss):
  l= dir(obj)
  for k in l:
    if ss in k:
      print k


del os, readline, rlcompleter, atexit, history_file, __file__

try:
    execfile("ztest.py")
    print "Test module Loaded."
    print "Good debug ;)"
except IOError:
    pass
except Exception,s:
    print "Ei, something wrongs loading test module :/"
    print s
    execfile("ztest.py") 

