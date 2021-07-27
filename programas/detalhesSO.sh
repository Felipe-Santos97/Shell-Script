#!/bin/bash
#
# Autor: Felipe Santos <felipe.pier7@gmail.com>
# -----------------------------------------------------------------------------------------------------------------
# Programa mostra dados sobre um sistema operacional GNU/Linux como: 
#  versão, versão do kernel, ip, e outros. 
# -----------------------------------------------------------------------------------------------------------------

SO="$(uname -o)"
kernel="$(uname -s)"
versaoKernel="$(uname -v)"
distro="$(lsb_release -i | cut -d: -f2)"
ip="$(ip route | grep -o src.[0-9]*.[0-9]*.[0-9]*.[0-9]*.)"
gateway="$(ip route | grep -o via.[0-9]*.[0-9]*.[0-9]*.[0-9]*.)"

# /etc/os-release existe?
[ -e /etc/os-release ] && versaoSO="$(grep 'VERSION=' /etc/os-release | cut -d= -f2)"  || {
  versaoSO="Arquivo /etc/os-release não encontrado"  
}

# Saida
echo -e "-------- Dados sobre o Sistema --------

\033[1mSistema Operacional:\033[m $SO
\033[1mDistribuição:\033[m $distro
\033[1mVersão do sistema:\033[m ${versaoSO//\"/}
\033[1mKernel:\033[m $kernel
\033[1mVersao Kernel:\033[m $versaoKernel
\033[1mIp da Maquina:\033[m ${ip#src}
\033[1mGateway:\033[m ${gateway#via}\n "

