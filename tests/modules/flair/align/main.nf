#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FLAIR_ALIGN } from '../../../../modules/flair/align/main.nf'

workflow test_flair_align {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    FLAIR_ALIGN ( input )
}
