# deploy_account_address = "0xB603C9Ca252ce89901C151Aedf24a41B95E33409"
# receive_account_address ="0x98FE5eaFd3D61af18fB2b2322b8346dF05057202"
# contract_address = "0x5b1869d9a4c187f2eaa108f3062412ecf0526b24"
# abi = [
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "name",
#     "outputs": [
#       {
#         "name": "",
#         "type": "string"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "spender",
#         "type": "address"
#       },
#       {
#         "name": "value",
#         "type": "uint256"
#       }
#     ],
#     "name": "approve",
#     "outputs": [
#       {
#         "name": "",
#         "type": "bool"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "totalSupply",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "",
#         "type": "address"
#       }
#     ],
#     "name": "isWelcomeTokenGiven",
#     "outputs": [
#       {
#         "name": "",
#         "type": "bool"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "from",
#         "type": "address"
#       },
#       {
#         "name": "to",
#         "type": "address"
#       },
#       {
#         "name": "value",
#         "type": "uint256"
#       }
#     ],
#     "name": "transferFrom",
#     "outputs": [
#       {
#         "name": "",
#         "type": "bool"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "INITIAL_SUPPLY",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "decimals",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint8"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "",
#         "type": "uint32"
#       }
#     ],
#     "name": "questionMap",
#     "outputs": [
#       {
#         "name": "questioner",
#         "type": "address"
#       },
#       {
#         "name": "selectedAnswerer",
#         "type": "address"
#       },
#       {
#         "name": "guarantee",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "manager",
#     "outputs": [
#       {
#         "name": "",
#         "type": "address"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "_spender",
#         "type": "address"
#       },
#       {
#         "name": "_subtractedValue",
#         "type": "uint256"
#       }
#     ],
#     "name": "decreaseApproval",
#     "outputs": [
#       {
#         "name": "",
#         "type": "bool"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "owner",
#         "type": "address"
#       }
#     ],
#     "name": "balanceOf",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [],
#     "name": "renounceOwnership",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "owner",
#     "outputs": [
#       {
#         "name": "",
#         "type": "address"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "symbol",
#     "outputs": [
#       {
#         "name": "",
#         "type": "string"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "to",
#         "type": "address"
#       },
#       {
#         "name": "value",
#         "type": "uint256"
#       }
#     ],
#     "name": "transfer",
#     "outputs": [
#       {
#         "name": "",
#         "type": "bool"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "_spender",
#         "type": "address"
#       },
#       {
#         "name": "_addedValue",
#         "type": "uint256"
#       }
#     ],
#     "name": "increaseApproval",
#     "outputs": [
#       {
#         "name": "",
#         "type": "bool"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "owner",
#         "type": "address"
#       },
#       {
#         "name": "spender",
#         "type": "address"
#       }
#     ],
#     "name": "allowance",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "_newOwner",
#         "type": "address"
#       }
#     ],
#     "name": "transferOwnership",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "inputs": [
#       {
#         "name": "_manager",
#         "type": "address"
#       },
#       {
#         "name": "_name",
#         "type": "string"
#       },
#       {
#         "name": "_symbol",
#         "type": "string"
#       },
#       {
#         "name": "_decimals",
#         "type": "uint8"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "constructor"
#   },
#   {
#     "anonymous": false,
#     "inputs": [
#       {
#         "indexed": true,
#         "name": "owner",
#         "type": "address"
#       },
#       {
#         "indexed": true,
#         "name": "spender",
#         "type": "address"
#       },
#       {
#         "indexed": false,
#         "name": "value",
#         "type": "uint256"
#       }
#     ],
#     "name": "Approval",
#     "type": "event"
#   },
#   {
#     "anonymous": false,
#     "inputs": [
#       {
#         "indexed": true,
#         "name": "from",
#         "type": "address"
#       },
#       {
#         "indexed": true,
#         "name": "to",
#         "type": "address"
#       },
#       {
#         "indexed": false,
#         "name": "value",
#         "type": "uint256"
#       }
#     ],
#     "name": "Transfer",
#     "type": "event"
#   },
#   {
#     "anonymous": false,
#     "inputs": [
#       {
#         "indexed": true,
#         "name": "previousOwner",
#         "type": "address"
#       }
#     ],
#     "name": "OwnershipRenounced",
#     "type": "event"
#   },
#   {
#     "anonymous": false,
#     "inputs": [
#       {
#         "indexed": true,
#         "name": "previousOwner",
#         "type": "address"
#       },
#       {
#         "indexed": true,
#         "name": "newOwner",
#         "type": "address"
#       }
#     ],
#     "name": "OwnershipTransferred",
#     "type": "event"
#   },
#   {
#     "constant": true,
#     "inputs": [],
#     "name": "getRefundRevenue",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "questionId",
#         "type": "uint32"
#       }
#     ],
#     "name": "getQuestionOwner",
#     "outputs": [
#       {
#         "name": "",
#         "type": "address"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "questionId",
#         "type": "uint32"
#       }
#     ],
#     "name": "getQuestionGuarantee",
#     "outputs": [
#       {
#         "name": "",
#         "type": "uint256"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": true,
#     "inputs": [
#       {
#         "name": "questionId",
#         "type": "uint32"
#       }
#     ],
#     "name": "getSelectedAnswerer",
#     "outputs": [
#       {
#         "name": "",
#         "type": "address"
#       }
#     ],
#     "payable": false,
#     "stateMutability": "view",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "newbie",
#         "type": "address"
#       }
#     ],
#     "name": "offerWelcomeToken",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "questionId",
#         "type": "uint32"
#       },
#       {
#         "name": "guarantee",
#         "type": "uint256"
#       }
#     ],
#     "name": "questionCreated",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "questionId",
#         "type": "uint32"
#       }
#     ],
#     "name": "removeQuestion",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [
#       {
#         "name": "questionId",
#         "type": "uint32"
#       },
#       {
#         "name": "answerer",
#         "type": "address"
#       }
#     ],
#     "name": "answerSelected",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   },
#   {
#     "constant": false,
#     "inputs": [],
#     "name": "takeRefundRevenue",
#     "outputs": [],
#     "payable": false,
#     "stateMutability": "nonpayable",
#     "type": "function"
#   }
# ]
#
# abi = abi.map { |el| el.with_indifferent_access }
# web3 = Web3::Eth::Rpc.new host: 'ropsten.infura.io',
#                           port: 443,
#                           connect_options: {
#                             open_timeout: 20,
#                             read_timeout: 140,
#                             use_ssl: true,
#                             rpc_path: '/v3/534451340d9f4cc1977090a9873f0a8d'
#                           }
#
# # creation of contract object
# MY_CONTRACT = web3.eth.contract(abi);
#
# # initiate contract for an address
# MY_CONTRACT_INSTANCE = MY_CONTRACT.at(contract_address);
#
# # call constant function
# # result = myContractInstance.balanceOf('0x...'); # any constant method works
