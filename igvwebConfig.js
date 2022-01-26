var igvwebConfig = {

    genomes: "igv/resources/genomes.json",
    trackRegistryFile: "igv/resources/tracks/trackRegistry.json",

    // Supply a drobpox api key to enable the Dropbox file picker in the load menus.  This is optional
    //dropboxAPIKey: "...",

    // Supply a Google client id to enable the Google file picker in the load menus.  This is optional
    //clientId: "...",
    // apiKey: "...",

    // Provide a URL shorterner function or object.   This is optional.  If not supplied
    // sharable URLs will not be shortened .
    urlShortener: {
        provider: "tinyURL"
    },

    igvConfig:
        {
            genome: "hg19",
            locus: "all",
            genomeList: "igv/resources/genomes.json",
            queryParametersSupported: true,
            showChromosomeWidget: true,
            showSVGButton: true,
            tracks: [
	    // TODO -- add default tracks here.  See github.com/igvteam/igv.js/wiki for details.
	    	// For example:
                // {
                //     name: "CTCF - string url",
                //     type: "wig",
                //     format: "bigwig",
                //     url: "https://www.encodeproject.org/files/ENCFF563PAW/@@download/ENCFF563PAW.bigWig"
                // }
	    ]
        }

}
