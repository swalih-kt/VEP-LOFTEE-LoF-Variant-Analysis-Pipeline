bcftools query -f '%CHROM\t%POS\t%REF\t%ALT\t%INFO/CSQ\n' mane_asd_loftee.vcf | \
awk -F'\t' '{
  split($5, csq_entries, ",");
  for (i in csq_entries) {
    split(csq_entries[i], fields, "|");
    print $1, $2, $3, $4, fields[2];
  }
}' OFS='\t' > variant_test.txt
