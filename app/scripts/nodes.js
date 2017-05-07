'use strict';
var nodes = function() {}
nodes.customNode = require('./nodeHelpers/customNode');
nodes.nodeTypes = {
    UBQ: "UBQ",
    Custom: "CUSTOM ETH"
};
nodes.customNodeObj = {
    'name': 'CUS',
    'blockExplorerTX': '',
    'blockExplorerAddr': '',
    'type': nodes.nodeTypes.Custom,
    'eip155': false,
    'chainId': '',
    'tokenList': [],
    'abiList': [],
    'estimateGas': false,
    'service': 'Custom',
    'lib': null
};
nodes.nodeList = {
    'ubq_pyrus': {
        'name': 'UBQ',
        'blockExplorerTX': 'https://ubiqscan.io/en/tx/[[txHash]]',
        'blockExplorerAddr': 'https://ubiqscan.io/en/address/[[address]]',
        'type': nodes.nodeTypes.UBQ,
        'eip155': true,
        'chainId': 8,
        'tokenList': require('./tokens/ubqTokens.json'),
        'abiList': require('./abiDefinitions/ubqAbi.json'),
        'estimateGas': true,
        'service': 'Ubiqscan.io',
        'lib': new nodes.customNode('https://api.ubiqsmart.com/ubq', '')
    }
};
nodes.ethPrice = require('./nodeHelpers/ethPrice');
module.exports = nodes;
