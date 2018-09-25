'use strict';
var nodes = function() {}
nodes.customNode = require('./nodeHelpers/customNode');
nodes.infuraNode = require('./nodeHelpers/infura');
nodes.metamaskNode = require('./nodeHelpers/metamask');
nodes.nodeTypes = {
    UBQ: "UBQ",
    Custom: "CUSTOM UBQ"
};
nodes.ensNodeTypes = [];
nodes.customNodeObj = {
    'name': 'CUS',
    'blockExplorerTX': '',
    'blockExplorerAddr': '',
    'type': nodes.nodeTypes.Custom,
    'eip155': false,
    'chainId': '',
    'tokenList': [],
    'abiList': [],
    'service': 'Custom',
    'lib': null
};
nodes.nodeList = {
    'ubq_us': {
        'name': 'UBQ (US)',
        'blockExplorerTX': 'https://ubiqscan.io/tx/[[txHash]]',
        'blockExplorerAddr': 'https://ubiqscan.io/address/[[address]]',
        'type': nodes.nodeTypes.UBQ,
        'eip155': true,
        'chainId': 8,
        'tokenList': require('./tokens/ubqTokens.json'),
        'abiList': require('./abiDefinitions/ubqAbi.json'),
        'estimateGas': true,
        'service': 'ubiqscan.io',
        'lib': new nodes.customNode('https://pyrus1.ubiqscan.io', '')
    },
    'ubq_eu': {
        'name': 'UBQ (EU)',
        'blockExplorerTX': 'https://ubiqscan.io/tx/[[txHash]]',
        'blockExplorerAddr': 'https://ubiqscan.io/address/[[address]]',
        'type': nodes.nodeTypes.UBQ,
        'eip155': true,
        'chainId': 8,
        'tokenList': require('./tokens/ubqTokens.json'),
        'abiList': require('./abiDefinitions/ubqAbi.json'),
        'estimateGas': true,
        'service': 'ubiqscan.io',
        'lib': new nodes.customNode('https://pyrus2.ubiqscan.io', '')
    }
};


nodes.ethPrice = require('./nodeHelpers/ethPrice');
module.exports = nodes;
