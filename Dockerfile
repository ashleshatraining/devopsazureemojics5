FROM buoyantio/emojivoto-svc-base:v12

ARG svc_name

COPY . .

# ARG variables arent available for ENTRYPOINT
ENV SVC_NAME $svc_name
ENTRYPOINT cd /usr/local/bin && $SVC_NAME
