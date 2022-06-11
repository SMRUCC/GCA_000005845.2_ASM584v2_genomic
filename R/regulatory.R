imports "bioseq.patterns" from "seqtoolkit";

#' create all possible TFBS motifs
#' 
const motif_cluster = function(sites, export = "./") {
    for(motif in sites |> read.fasta |> find_motifs(minw = 12, maxw = 16)) {
        motif
        |> json(compress = FALSE)
        |> writeLines(con = `${export}/${motifString(motif)}.json`)
        ;

        bitmap(file = `${export}/${motifString(motif)}.png`) {
            plot(motif);
        };
    }
}