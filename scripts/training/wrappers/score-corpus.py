#!/usr/bin/env python

import optparse
import os
import subprocess
import sys
import tempfile

def main():
    parser = optparse.OptionParser()
    parser.add_option("-b", "--binary", dest="binary",
                      help="path to score-corpus binary")
    (options, args) = parser.parse_args()

    if options.binary == None:
        print >>sys.stderr, "usage: score-corpus -b BINARY"
        sys.exit(1)

    tmp_fd, tmp_path = tempfile.mkstemp()
    try:
        tmp_file = os.fdopen(tmp_fd, "w")
        for line in sys.stdin:
            tmp_file.write(line)
        tmp_file.close()
        retcode = subprocess.call([options.binary, tmp_path])
        if retcode < 0:
            print >>sys.stderr, "Child was terminated by signal ", -retcode
            sys.exit(1)
        elif retcode > 0:
            print >>sys.stderr, "Child returned ", retcode
            sys.exit(1)
    except OSError, e:
        print >>sys.stderr, "Execution failed: ", e
        sys.exit(1)
    finally:
        os.unlink(tmp_path)

if __name__ == '__main__':
    main()
