perl vep \
  --input_file asd_work/new_analysis/analysis_30_may_25/asd_gene_panel.vcf.gz \
  --output_file asd_work/new_analysis/analysis_30_may_25/mane_asd_loftee.vcf \
  --format vcf \
  --vcf \
  --species homo_sapiens \
  --assembly GRCh38 \
  --offline \
  --cache \
  --dir_cache /home/treesa/.vep \
  --fasta /home/treesa/.vep/homo_sapiens/ref_genome_114/Homo_sapiens.GRCh38.dna.toplevel.fa \
  --refseq \
  --mane_select \
  --pick \
  --dir_plugins /home/treesa/.vep/Plugins/hg38_plugin_files/loftee-1.0.4_GRCh38 \
  --plugin LoF,loftee_path:/home/treesa/.vep/Plugins/hg38_plugin_files/loftee-1.0.4_GRCh38,\
human_ancestor_fa:/home/treesa/.vep/loftee_data/GRCh38/human_ancestor.fa.gz,\
conservation_file:/home/treesa/.vep/loftee_data/GRCh38/loftee.sql,\
gerp_bigwig:/home/treesa/.vep/loftee_data/GRCh38/gerp_conservation_scores.homo_sapiens.GRCh38.bw \
  --force_overwrite
