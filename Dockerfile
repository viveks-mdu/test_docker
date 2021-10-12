FROM cdpxwin.azurecr.io/artifact/c464d61c-c279-45ba-aee3-c315093ed8e0/official/odspcontainercommon/odspbaseimage:windowsserver1809-aspnet-wcf-20210217183250896-b7cf0bc9

COPY DockerEntrypoint.ps1 DockerEntrypoint.ps1
COPY inetpub inetpub
COPY Dockerbuild.ps1 Dockerbuild.ps1
COPY ServiceMonitor.exe ServiceMonitor.exe 

#RUN ["powershell.exe", ".\\Dockerbuild.ps1"]

EXPOSE 80

ENTRYPOINT ["powershell.exe", ".\\DockerEntrypoint.ps1"]