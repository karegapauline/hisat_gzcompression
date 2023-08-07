process COMPRESS {
    label 'compress'
    publishDir params.outdir
	
    input:
    tuple val(name), path(trimmed_reads)
	
    output:
    tuple val(name), path("${name}_*.trimmed.fastqsanger.gz"), emit: sample2_compressed
	
    script:
    """
    gzip ${trimmed_reads[0]} 
    gzip ${trimmed_reads[1]} 
    
    
    """
    
   }
   