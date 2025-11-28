/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var crrNode1 = l1
        var crrNode2 = l2
        
        var isThereCarry: Bool = false
        var isFirst: Bool = true

        var head: ListNode? = ListNode(0)
        var crr: ListNode? = head


        while(crrNode1 != nil || crrNode2 != nil) {
            var val1 = crrNode1?.val ?? 0
            var val2 = crrNode2?.val ?? 0
            var sum = val1 + val2
            var compl = sum % 10
            var valueForCarry: Int = 0

            if isThereCarry {
                valueForCarry = compl + 1
                compl = valueForCarry % 10
                var newNode = ListNode(compl)
                crr!.next = newNode
                crr = newNode
            }
            else {
                if isFirst {
                    var newNode = ListNode(compl)
                    head!.next = newNode
                    crr!.next = newNode
                    crr = newNode
                    isFirst = false
                }
                else {
                    var newNode = ListNode(compl)
                    crr!.next = newNode
                    crr = newNode
                }
            }

            if sum > 9 || valueForCarry > 9 {
                isThereCarry = true
            } 
            else {
                isThereCarry = false
            }

            crrNode1 = crrNode1?.next
            crrNode2 = crrNode2?.next

        }

        if(isThereCarry) {
            var newNode = ListNode(1)
            crr?.next = newNode

        }

        return head?.next
    }
}