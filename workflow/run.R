imports "package_utils" from "devkit";

# attach workflow package
package_utils::attach(dirname(@dir));

workspace = list(dir = dirname(@dir));
workspace$genbank_src    = `${workspace$dir}/source/GCA_000005845.2_ASM584v2_genomic.gbff`;
workspace$upstream_sites = `${workspace$dir}/source/upstream_250bp.fasta`;
workspace$motif_exports  = `${workspace$dir}/source/motifs/`;

sites = extract_upstream(workspace$genbank_src, len = 200);

write.fasta(sites, file = workspace$upstream_sites, lineBreak = 80, delimiter = "|");
motif_cluster(workspace$upstream_sites, export = workspace$motif_exports);