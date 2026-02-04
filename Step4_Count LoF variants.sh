awk -F'\t' '{print $NF}' variant_test.txt | \
egrep 'stop_gained|frameshift_variant|splice_donor_variant|splice_acceptor_variant' | \
sort | uniq -c
