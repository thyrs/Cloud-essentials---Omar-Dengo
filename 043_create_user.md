

```sh
# 1. Create a user on your system for yourself, with your preferred username.
# 2. Give your user sudo powers.
# 3. Change the password of the new user.
# 4. Use su to get into the new user account.
# 5. Create a directory called bootcamp in your home directory.
# 6. Create a group called devops.
```

```sh
# 1. Create a user on your system for yourself, with your preferred username.
useradd -m user1 -s /bin/bash
sudo usermod -aG sudo user_name
# 2. Give your user sudo powers.
sudo usermod -aG sudo user_name 
# 3. Change the password of the new user.
passwd user_name
# 4. Use su to get into the new user account.
su - user_name
# 5. Create a directory called bootcamp in your home directory.
mkdir bootcamp
# 6. Create a group called devops.
sudo groupadd devops
```
