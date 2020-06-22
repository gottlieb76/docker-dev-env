export MSYS_NO_PATHCONV=1

docker run --rm -it                                                         \
  --mount src=~/.config,target=/root/.config,type=bind                      \
  --mount src=~/.kube,target=/root/.kube,type=bind                          \
  --mount src=~/.gcp,target=/root/.gcp,type=bind                            \
  --mount src=~/.ssh,target=/root/.ssh,type=bind                            \
  --mount src=$GOPATH,target=/root/go,type=bind                             \
  --env GOOGLE_CLOUD_KEYFILE_JSON=/root/.gcp/sa-terraform-keyfile.json      \
  --env GOOGLE_APPLICATION_CREDENTIALS=/root/.gcp/sa-terraform-keyfile.json \
  --workdir /root/go                                                        \
  devimage:latest "$@"
  
