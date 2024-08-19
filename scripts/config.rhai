let titles_type = ["Survey", "Review", "SoK"];
let titles_bc = ["Consensus", "Byzantine", "BFT", "fault toleran",  "Blockchain", "smart contract", "trust"];
let titles_zk = ["Zero Knowledge", "zk", "secret sharing", "quantum"];
let titles_auth = ["authenticate", "access", "handover", "anonymous", "satellite"];
let titles_fl = ["federated learning", "fl"];
let titles_otfs = ["otfs"];
let titles = titles_type + titles_bc + titles_zk + titles_auth + titles_fl + titles_otfs;
let authors_array = ["Ling Ren", "Miguel Correia", "Sisi Duan", "Alysson Bessani", "Ittai Abraham", "Xiuzhen Cheng", "Dahlia Malkhi", "Michael Reiter", "Yupeng zhang", "Ronny Hadani","Emanuele Viterbo","Yi Hong","Shuangyang Li","Lajos Hanzo","Arman Farhang"];

let conferences = [
        // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP", "DSN", "SRDS", "PODC", "OPODIS",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security", "TDSC", "TIFS",
    // EE
    "TWC", "TCOM", "JSAC", "TMC", "TON", "INFOCOM", "TVT", "WCL", "CL", "TIT",  "TITS", 
    // others
    "TSC", "TPDS", "JPDC", "JSS", "JISA", "TKDE"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;