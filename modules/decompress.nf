process DECOMPRESS {
    label 'decompress'
    publishDir params.outdir
	
    input:
    tuple val(name), path(compressed_trimmed_reads)
	
    output:
    tuple val(name), path("${name}*.trimmed.fastq"), emit: sample2_decompressed
	
    script:
    """
    gunzip -c ${compressed_trimmed_reads[0]} > ${name}.trimmed.fastq
    gunzip -c ${compressed_trimmed_reads[1]} > ${name}.trimmed.fastq
    
    
    """
    
   }
   