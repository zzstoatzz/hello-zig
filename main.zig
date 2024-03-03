const std = @import("std");

fn assignment() void {
    const constant: i32 = 5;
    var variable: u32 = 500;

    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);

    std.debug.print(" constant: {d} variable: {d} inferred_constant: {d} inferred_variable: {d}\n", .{ constant, variable, inferred_constant, inferred_variable });
}

fn arrays() void {
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };

    const composite_length = a.len + b.len;
    std.debug.print("composite_length: {d}\n", .{composite_length});
}

pub fn main() void {
    assignment();
    arrays();
    std.debug.print("Hello, {s}!\n", .{"World"});
}
