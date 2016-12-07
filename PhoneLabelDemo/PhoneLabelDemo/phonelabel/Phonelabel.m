//
//  Phonelabel.m
//  Easybao
//
//  Created by geely on 16/12/6.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "Phonelabel.h"

@implementation Phonelabel

- (void)setLinkText:(NSAttributedString *)linktext
{
    self.delegate = self;
    self.editable = NO;
    
    NSMutableAttributedString *curstr = [linktext mutableCopy];
    
    NSError *error = nil;
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber error:&error];
    [detector enumerateMatchesInString:linktext.string
                               options:kNilOptions
                                 range:NSMakeRange(0, [linktext.string length])
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                                NSURL *telUrl = [NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",result.phoneNumber]];
                                [curstr addAttribute:NSLinkAttributeName value:telUrl range:result.range];
                            }];
//    //匹配座机服务电话
//    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:@"[0-9]{5,20}|[0-9-]{10,20}" options:0 error:NULL];
//    [regular enumerateMatchesInString:linktext.string
//                              options:kNilOptions
//                                range:NSMakeRange(0, [linktext.string length])
//                           usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
//                               NSURL *telUrl = [NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",[linktext.string substringWithRange:result.range]]];
//                               [curstr addAttribute:NSLinkAttributeName value:telUrl range:result.range];
//                           }];
//    self.tintColor = RGBA(0xe6, 0x2f, 0x17, 0.6);
    self.attributedText = [curstr copy];
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    return YES;
}

@end
