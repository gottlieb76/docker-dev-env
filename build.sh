# if apt-get update fails inside the container, check the date inside
# WSL2 shell - and possibly run: 
#   sudo hwclock --hctosys

docker build -f ubuntu.dockerfile -t devimage:latest .