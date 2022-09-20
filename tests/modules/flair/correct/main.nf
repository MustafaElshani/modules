#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FLAIR_CORRECT } from '../../../../modules/flair/correct/main.nf'

workflow test_flair_correct {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    FLAIR_CORRECT ( input )
}
