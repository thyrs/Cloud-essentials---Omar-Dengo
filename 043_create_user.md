

```sh
# - [ ] Create a user on your system for yourself, with your preferred username.
# - [ ] Give your user sudo powers.
# - [ ] Change the password of the new user.
# - [ ] Use su to get into the new user account.
# - [ ] Create a directory called bootcamp in your home directory.
# - [ ] Create a group called devops.
```

```sh
# - [ ] Create a user on your system for yourself, with your preferred username.
useradd -m user1 -s /bin/bash
sudo usermod -aG sudo user_name

# - [ ] Give your user sudo powers.
sudo usermod -aG sudo user_name 
# - [ ] Change the password of the new user.
passwd user_name
# - [ ] Use su to get into the new user account.
su - user_name
# - [ ] Create a directory called bootcamp in your home directory.
mkdir bootcamp
# - [ ] Create a group called devops.
sudo groupadd devops
```
