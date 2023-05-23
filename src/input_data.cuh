#pragma once

#include "trees.cuh"

// Only the version/biome combinations that have an example input were tested, anything else will probably not work

__device__ constexpr TreeChunk get_input_data() {
    // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
    //     .tree_oak(5457, 5266, IntRange(6), "00?0""10?1""01?0")
    //     .tree_oak(5456, 5258, IntRange(7), "?1??""?0??""01?1")
    //     .tree_oak(5460, 5258, IntRange(7), "????""????""?1?0")
    //     .build();

    // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
    //     .tree_oak(5455, 5281, IntRange(7), "00??""00??""10??")
    //     .tree_oak(5457, 5277, IntRange(5), "1???""1???""10??")
    //     .build();

    // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
    //     .tree_oak(5435, 5282, IntRange(5, 6), "?0?0""?1?1""?1?0")
    //     .tree_oak(5438, 5277, IntRange(5, 6), "???0""???0""???1")
    //     .tree_oak(5432, 5278, IntRange(5, 6), "?1??""????""????")
    //     .build();

    return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
        .tree_oak(5434, 5292, IntRange(-1), "????""0?0?""0?0?")
        .tree_oak(5438, 5292, IntRange(-1), "????""????""??0?")
        .build();

    // 281474244703383

    // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
    //     .tree_oak(-1433, -2346, IntRange(6), "1101""?010""1010")
    //     .tree_oak(-1435, -2353, IntRange(6), "?0?1""??11""0?10")
    //     .tree_birch(-1435, -2356, IntRange(5), "????""????""????")
    //     .tree_oak(-1437, -2350, IntRange(6), "????""????""????")
    //     .tree_oak(-1441, -2345, IntRange(6), "????""????""????")
    //     .tree_oak(-1441, -2352, IntRange(4), "????""????""????")
    //     .tree_oak(-1447, -2348, IntRange(4), "????""????""????")
    //     .build();

    // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
    //     .tree_unknown(-681, -2242)
    //     .tree_unknown(-688, -2244)
    //     .tree_unknown(-683, -2236)
    //     .tree_unknown(-693, -2241)
    //     .build();

    // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
    //     .tree_oak(-894, -2318, IntRange(-1), "00?1""0011""1110")
    //     .tree_oak(-893, -2325, IntRange(-1), "?1?1""?0?0""0001")
    //     .tree_oak(-893, -2328, IntRange(-1), "0?0?""1?0?""1011")
    //     .tree_oak(-903, -2327, IntRange(-1), "1010""1100""0000")
    //     .tree_unknown(-900, -2325)
    //     .tree_unknown(-900, -2319)
    //     .build();
}

// TEST DATA

// 1.16.4 Forest ???
// chunk_trees[0] = TreeChunk(-4, -12, Biome::Forest);
// chunk_trees[0].add_tree(tree_oak(po(-64), po(-178), 5, 5, "0?1?""????""????"));
// chunk_trees[0].add_tree(tree_oak(po(-58), po(-181), 5, 5, "0?0?""0?1?""1?1?"));
// chunk_trees[0].add_tree(tree_birch(po(-56), po(-177), 0, 0, "????""????""????"));
// chunk_trees[0].add_tree(tree_oak(po(-53), po(-182), 5, 5, "1???""1???""1???"));
// chunk_trees[0].add_tree(tree_fancy_oak(po(-50), po(-188), 3, 0));

// chunk_trees[1] = TreeChunk(-3, -11, Biome::Forest);
// chunk_trees[1].add_tree(tree_birch(po(-47), po(-168), 0, 0, "????""????""????"));
// chunk_trees[1].add_tree(tree_oak(po(-43), po(-176), 5, 5, "????""????""????"));
// chunk_trees[1].add_tree(tree_oak(po(-38), po(-168), 0, 0, "????""????""????"));
// chunk_trees[1].add_tree(tree_birch(po(-34), po(-164), 0, 0, "????""????""????"));

// chunk_trees[2] = TreeChunk(-3, -12, Biome::Forest);
// chunk_trees[2].add_tree(tree_oak(po(-45), po(-188), 5, 5, "????""????""????"));
// chunk_trees[2].add_tree(tree_oak(po(-45), po(-184), 5, 5, "????""????""????"));
// chunk_trees[2].add_tree(tree_unknown(po(-40), po(-178)));

// chunk_trees[3] = TreeChunk(-5, -3, Biome::Forest);
// chunk_trees[3].add_tree(tree_oak(po(-75), po(-40), 6, 6, "0100""1111""0111"));
// chunk_trees[3].add_tree(tree_fancy_oak(po(-77), po(-37), 0, 0));
// chunk_trees[3].add_tree(tree_birch(po(-69), po(-45), 5, 5, "101?""0011""1011"));
// chunk_trees[3].add_tree(tree_oak(po(-74), po(-48), 4, 4, "????""????""0000"));
// chunk_trees[3].add_tree(tree_oak(po(-68), po(-38), 4, 4, "1?10""0010""0000"));
// chunk_trees[3].add_tree(tree_oak(po(-70), po(-48), 4, 4, "??11""?011""0?1?"));
// chunk_trees[3].add_tree(tree_oak(po(-65), po(-42), 5, 5, "????""?011""1110"));

// 1.3.1 Forest
// __device__ constexpr TreeChunk get_input_data() {
//     return TreeChunkBuilder(Version::v1_12_2, Biome::Forest)
//         .tree_oak(-14, 71, IntRange(5), "0000""1011""0011")
//         .tree_birch(-14, 63, IntRange(6), "1111""0011""0001")
//         .tree_oak(-20, 65, IntRange(4), "?100""?111""0011")
//         .tree_oak(-21, 62, IntRange(5), "010?""000?""1100")
//         .tree_oak(-9, 64, IntRange(6), "0011""0110""1110")
//         .build();
// }

// 1.8.9 Taiga
// __device__ constexpr TreeChunk get_input_data() {
//     return TreeChunkBuilder(Version::v1_12_2, Biome::Taiga)
//         .tree_spruce(553, 4879, IntRange(9), IntRange(1), IntRange(2), IntRange(0), IntRange(2))
//         .tree_spruce(556, 4884, IntRange(9), IntRange(1), IntRange(3, -1), IntRange(0), IntRange(1))
//         .tree_pine(564, 4873, IntRange(11), IntRange(4), IntRange(2))
//         .tree_pine(565, 4876, IntRange(11), IntRange(4), IntRange(3, -1))
//         .tree_pine(561, 4880, IntRange(9), IntRange(3), IntRange(2, -1))
//         .build();
// }

// 1.7 Taiga - rehorted
// __device__ constexpr TreeChunk get_input_data() {
//     return TreeChunkBuilder(Version::v1_12_2, Biome::Taiga)
//         .tree_spruce(85, 149, IntRange(8), IntRange(1), IntRange(3, -1), IntRange(1), IntRange(0))
//         .tree_spruce(76, 151, IntRange(6), IntRange(1), IntRange(2, -1), IntRange(0), IntRange(1))
//         .tree_spruce(84, 143, IntRange(9), IntRange(2), IntRange(3, -1), IntRange(1), IntRange(0))
//         .tree_pine(76, 146, IntRange(11), IntRange(3), IntRange(2, -1))
//         .tree_pine(79, 136, IntRange(8), IntRange(3), IntRange(2, -1))
//         .build();

//     return TreeChunkBuilder(Version::v1_12_2, Biome::Taiga)
//         .tree_spruce(-93, 336, IntRange(7), IntRange(1), IntRange(2), IntRange(0), IntRange(2))
//         .tree_spruce(-103, 338, IntRange(6, 7), IntRange(1, 2), IntRange(2, -1), IntRange(-1), IntRange(-1))
//         .tree_spruce(-101, 330, IntRange(8), IntRange(2), IntRange(2), IntRange(0), IntRange(0, 1))
//         .tree_spruce(-89, 338, IntRange(7), IntRange(2), IntRange(2, -1), IntRange(0), IntRange(0, 1))
//         .tree_pine(-92, 328, IntRange(9, 10), IntRange(3), IntRange(2, -1))
//         .tree_unknown(-97, 329)
//         .build();
    
//     return TreeChunkBuilder(Version::v1_12_2, Biome::Taiga)
//         .tree_pine(-80, 353, IntRange(7), IntRange(3), IntRange(2, -1))
//         .tree_pine(-82, 358, IntRange(8, -1), IntRange(4), IntRange(1))
//         .tree_pine(-87, 359, IntRange(7, -1), IntRange(4), IntRange(2))
//         .tree_pine(-87, 351, IntRange(11, -1), IntRange(4), IntRange(3, -1))
//         .build();
// }

// 1.12.2 Taiga/Forest - smash 7
// __device__ constexpr TreeChunk get_input_data() {
//     return TreeChunkBuilder(Version::v1_12_2, Biome::Taiga)
//         .tree_pine(-715, 138, IntRange(7), IntRange(3), IntRange(1))
//         .tree_pine(-726, 146, IntRange(8, -1), IntRange(3), IntRange(1))
//         .tree_spruce(-719, 141, IntRange(8, -1), IntRange(-1), IntRange(3, -1), IntRange(0), IntRange(1))
//         .tree_spruce(-728, 151, IntRange(7, -1), IntRange(-1), IntRange(3, -1), IntRange(1), IntRange(1))
//         .build();
    
//     return TreeChunkBuilder(Version::v1_12_2, Biome::Taiga)
//         .tree_spruce(-698, 147, IntRange(6), IntRange(2), IntRange(2, -1), IntRange(0), IntRange(1))
//         .tree_spruce(-703, 145, IntRange(9), IntRange(1), IntRange(2), IntRange(1), IntRange(1, -1))
//         .tree_spruce(-710, 146, IntRange(8), IntRange(2), IntRange(2, -1), IntRange(0), IntRange(-1))
//         .tree_pine(-706, 142, IntRange(7), IntRange(4), IntRange(3, -1))
//         .build();

//     return TreeChunkBuilder(Version::v1_12_2, Biome::Forest)
//         .tree_oak(-693, 99, IntRange(5, -1), "?111""?001""?011")
//         .tree_oak(-691, 95, IntRange(6, -1), "????""?1??""????")
//         .tree_oak(-684, 95, IntRange(4), "???0""???1""????")
//         .tree_birch(-686, 97, IntRange(6), "?1?0""????""????")
//         .build();
// }

// 1.14.4 Forest - seed 123 - tree seed 13108863711061
// __device__ constexpr TreeChunk get_input_data() {
//     return TreeChunkBuilder(Version::v1_14_4, Biome::Forest)
//         .tree_oak(-48, 99, IntRange(4), "111?""10??""?1?1")
//         .tree_birch(-47, 96, IntRange(6), "0?11""110?""110?")
//         .tree_birch(-44, 98, IntRange(7), "??1?""?100""0010")
//         .tree_oak(-46, 102, IntRange(4), "1000""?0?0""?0??")
//         .tree_oak(-43, 101, IntRange(5), "??00""??01""?011")
//         .tree_oak(-34, 100, IntRange(5), "0100""1001""1010")
//         .tree_oak(-37, 106, IntRange(5), "0100""0110""0011")
//         .tree_oak(-43, 110, IntRange(6), "110?""011?""0000")
//         .build();
// }

// 1.8.9 Forest - seed 123 - tree seed 241689593949439
// __device__ constexpr TreeChunk get_input_data() {
//     return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
//         .tree_oak(133, 493, IntRange(4), "0000""1000""1111")
//         .tree_oak(129, 501, IntRange(4), "0110""1011""010?")
//         .tree_oak(135, 499, IntRange(6), "1?0?""0?0?""0001")
//         .tree_oak(121, 499, IntRange(6), "0110""1100""0110")
//         .tree_oak(122, 492, IntRange(5), "??01""???1""?010")
//         .tree_birch(123, 489, IntRange(6), "0?01""??00""??11")
//         .tree_birch(132, 503, IntRange(6), "???0""???0""1000")
//         .build();
// }

// 1.8.9 Forest - seed -5141540374460396599
// __device__ constexpr TreeChunk get_input_data() {
//     // 69261861613140
//     return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
//         .tree_birch(256 + 11, 175, IntRange(7), "01??""00?0""10?0")
//         .tree_birch(256 + 12, 183, IntRange(6), "?1?0""?0?0""00?0")
//         .tree_birch(256 + 18, 169, IntRange(6, -1), "???1""1??0""???0")
//         .tree_oak(256 + 11, 180, IntRange(5), "?0??""10??""01??")
//         .tree_oak(256 + 21, 182, IntRange(6), "?1?0""?1?1""11?1")
//         .tree_oak(256 + 23, 173, IntRange(-1), "???1""?1?0""11?1")
//         .tree_oak(256 + 23, 168, IntRange(-1), "????""????""???1")
//         .build();

//     // 83751666894233
//     // return TreeChunkBuilder(Version::v1_8_9, Biome::Forest)
//     //     .tree_birch(204, 260, IntRange(7), "00?1""11?1""1??0")
//     //     .tree_birch(209, 253, IntRange(-1), "?1?1""?1?1""???0")
//     //     .tree_oak(205, 254, IntRange(4), "1??0""1??0""???1")
//     //     .tree_oak(212, 257, IntRange(-1), "????""1???""0??0")
//     //     .tree_oak(211, 262, IntRange(5), "?0?0""?0?1""01?0")
//     //     .build();
// }