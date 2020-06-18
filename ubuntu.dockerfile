FROM hashicorp/terraform:light as terraform-light

FROM google/cloud-sdk:latest

RUN apt-get update \
 && apt-get install -y vim

COPY --from=terraform-light /bin/terraform /usr/bin/terraform

COPY ./profile /root/.bashrc

ENTRYPOINT [ "/bin/bash" ]

VOLUME [ "/root/.config",  "/root/.gcp",  "/root/.kube",  "/root/go" ]