#!/usr/bin/bash

echo ""
echo "Rotating IP"
echo ""

ipv6_current=$(curl -6 -s ipv6.icanhazip.com)

IFS=$'\n' read -d '' -r -a ipv6_list < ./ipv6_addresses

for i in "${!ipv6_list[@]}"; do
   if [[ "${ipv6_list[$i]}" = "${ipv6_current}" ]]; then
       found=${i}
   fi
done

echo "current ip: ${ipv6_current}"
echo "Array values: ${ipv6_list[@]}"
echo "Array index ${found} value: \"${ipv6_list[$found]}\""
