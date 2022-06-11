imports "package_utils" from "devkit";

# attach workflow package
package_utils::attach(dirname(@dir));

workspace = list(
    dir = dirname(@dir)
);

genbank_src = `${workspace$dir}/source/GCA_000005845.2_ASM584v2_genomic.gbff`;
sites = extract_upstream(genbank_src, len = 200);

write.fasta(sites, file = `${workspace$dir}/source/upstream_250bp.fasta`, lineBreak = 80, delimiter = "|");