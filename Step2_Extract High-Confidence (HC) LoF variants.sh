#Extract High-Confidence (HC) LoF Variants

#Count HC variants
grep -c "|HC|" mane_asd_loftee.vcf

#Create HC-only VCF
grep -E '^#|[|]HC[|]' mane_asd_loftee.vcf > HC_mane_asd_loftee.vcf
