FROM dolfinx/lab:latest

RUN apt update && apt install -y openssh-server
RUN mkdir ~/.ssh
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDHVXS5pIS3ETdYUF1orsd6HuFmP8kIId0kXZC/XsighdDQFkG0iHkZZ/HVLLN7u0cwrtx0bun8naOksoTVXZQnbVMXGalX/zA0YzRySQzhrquHgIY0a5PKC+eZT+NOM+uN8SPZ/nuScxfmhQjrT/aup3ZeQoa6ThSWBcGX65V6jMgRYXdiVwRvtEE4qLdVwgk81Z7OKIlIWN98J9nYFisiim5P9Ew1WGp8ccKB44SNNJHCyc6rM2sp5JFrBhOyQ52BR7iv7Hf++Q9AKP8PXoyD4f3jEO8WJeCNkOdEw3WhNROrBMJ+C8y6K40Kl8Pzksb8+83xMpqVCuDA/b3uFb5H1tVUjY5+xstAQjAtfsB7C1NEUA8Msh4Q1lNmDHiB3YlVfsmY5Yhpfv+JU3V+B/7mtHXld0XF4Ac2YlAv3lgWeZpfBWagymxtL9MVjUgPTT7Dd2FBjtoHNLfFYt3r70D0fdRgtrSpIY+ppUgTGbnCz+fXCTun6jP/Ejx+3qZS85U= mail@pengfeima.cn" >> ~/.ssh/authorized_keys

# 重置ENTRYPOINT
ENTRYPOINT []
ADD start_ssh.sh /start_ssh.sh
RUN chmod 755 /start_ssh.sh
CMD ["/start_ssh.sh"]

# docker build -t dolfinx:ssh .
# 将当前目录挂载到目录下
# sudo docker run -td --name dolfinx_ssh -v .:/ -p 22:22 dolfinx:ssh
# rm ~/.ssh/known_hosts
# ssh root@127.0.0.1