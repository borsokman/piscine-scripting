#!/bin/bash

cat << heredoc > show-info.sh
#!/bin/bash
cat -e << EOF
The current directory is: \$PWD
The default paths are: \$PATH
The current user is: \$USERNAME
EOF
heredoc