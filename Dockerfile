FROM registry.cn-hangzhou.aliyuncs.com/conan-build/windows-build:0.1

SHELL ["cmd.exe", "/S", "/C"]

ENV PYTHONIOENCODING=UTF-8

COPY assets/Git-2.36.1-64-bit.exe Git-2.36.1-64-bit.exe
RUN start /w Git-2.36.1-64-bit.exe /SILENT /VERYSILENT /ALLUSERS /NORESTART /NOCLOSEAPPLICATIONS /NOICONS
RUN del Git-2.36.1-64-bit.exe

RUN start /w pip install -i https://pypi.tuna.tsinghua.edu.cn/simple conan_package_tools

