#!/bin/bash

set -e

###############################################################################
#                                                                             #
# Project 'Pterodactyc Installer' By 'HeyWhite'                               #
#                                                                             #
# Copyright (C) 2022-2023, HeyWhite, <heywhite@hostverse.eu>                  #
#                                                                             #
#   This program is distributed in the hope that it will be useful,           #
#   but WITHOUT ANY WARRANTY; without even the implied warranty of            #
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             #
#   GNU General Public License for more details.                              #
#                                                                             #
#   You should have received a copy of the GNU General Public License         #
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.    #
#                                                                             #
# This script is not associated with the official Pterodactyl Project.        #
#                                                                             #
# https://github.com/heywhite-bogdan/pterodactyl/installer                    #
# https://paypal.com/ninenodes, support me with money                         #
#                                                                             #
###############################################################################

# Check if script is loaded, load if not or fail otherwise.
fn_exists() { declare -F "$1" >/dev/null; }
if ! fn_exists lib_loaded; then
  # shellcheck source=lib/lib.sh
  source /tmp/lib.sh || source <(curl -sSL "$GITHUB_BASE_URL/$GITHUB_SOURCE"/lib/lib.sh)
  ! fn_exists lib_loaded && echo "* ERROR: Could not load lib script" && exit 1
fi

# When #280 is merged
