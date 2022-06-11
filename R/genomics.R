imports "GenBank" from "seqtoolkit";
imports "bioseq.fasta" from "seqtoolkit";
imports "annotation.genomics" from "seqtoolkit";
imports "annotation.genomics_context" from "seqtoolkit";

#' extract upstream 250bp TFBS binding regions 
#' of each protein coding genes
#' 
#' @param genbank the file path of the NCBI genbank text file.
#' 
const extract_upstream = function(genbank, len = 250) {
    const raw_gb = read.genbank(genbank);
    const genes = genome.genes(raw_gb);
    const regions = upstream(genes, length = len);
    const nt = origin.fasta(raw_gb);
    const sites = sapply(regions, function(loci) {
        nt |> cut_seq.linear(loci, doNtAutoReverse = TRUE);
    });

    as.fasta(sites);
}