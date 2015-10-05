# platform = Red Hat Enterprise Linux 7
source ./templates/support.sh
populate var_password_pam_difok

if egrep -q ^difok[[:space:]]*=[[:space:]]*[-]?[[:digit:]]+ /etc/security/pwquality.conf; then
	sed -i "s/^\(difok *= *\).*/\1$var_password_pam_difok/" /etc/security/pwquality.conf
else
	sed -i "/\(difok *= *\).*/a difok = $var_password_pam_difok" /etc/security/pwquality.conf
fi
