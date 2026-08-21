#!/bin/bash

echo "=============================="
echo "    PASSWORD GENERATOR"
echo "=============================="

# read -p "Enter password length: " length

# password=$(openssl rand -base64 48 | head -c "$length")

# echo
# echo "Generated Password:"
# echo "$password"


# #!/bin/bash

# password=$(openssl rand -hex 16)

# echo "Password: $password"


#!/bin/bash

read -p "Enter password length: " length

password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+=' < /dev/urandom | head -c "$length")

echo "Generated Password: $password"