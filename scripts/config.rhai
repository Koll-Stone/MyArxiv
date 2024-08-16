let titles_type = ["Survey", "Review", "SoK"];
let titles_bc = ["Consensus", "Byzantine", "Blockchain"];
let titles_zk = ["Zero Knowledge", "zk", "secret sharing"];
let titles_auth = ["authenticate", "handover", "anonymous"]
let titles = titles_type + titles_bc + titles_zk + titles_auth;
let authors_array = ["Ling Ren", "Miguel Correia", "Sisi Duan", "Alysson Bessani", "Ittai Abraham"];

let conferences = [
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP", "DSN", "SRDS",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
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